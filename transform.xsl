<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:h="http://www.jewelhealth.com/home">
  <xsl:template match="/">
    <html>
      <head>
        <!-- Tailwind CSS CDN -->
        <script src="https://cdn.tailwindcss.com"></script>
      </head>
      <body class="bg-slate-100 p-8">
        <h1 class="text-3xl font-bold mb-6 text-center">Hospital Management System</h1>
        
        <h2 class="text-2xl font-semibold mb-4">Patients</h2>
        <div class="overflow-x-auto mb-8">
          <table class="min-w-full bg-white shadow-md rounded-lg overflow-hidden">
            <thead class="bg-blue-300">
              <tr>
                <th class="px-4 py-2">Name</th>
                <th class="px-4 py-2">DOB</th>
                <th class="px-4 py-2">Age</th>
                <th class="px-4 py-2">Gender</th>
                <th class="px-4 py-2">Contact Number</th>
                <th class="px-4 py-2">Email</th>
                <th class="px-4 py-2">Emergency Number</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="h:hospital/h:patients/h:patient">
               <tr class="hover:bg-blue-100">
                  <td class="border px-4 py-2"><xsl:value-of select="h:patientName"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:patientDOB"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:patientAge"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:patientGender"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:patientContactNumber"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:patientEmail"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:patientEmergencyNumber"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>

        <h2 class="text-2xl font-semibold mb-4">Doctors</h2>
        <div class="overflow-x-auto mb-8">
          <table class="min-w-full bg-white shadow-md rounded-lg overflow-hidden">
            <thead class="bg-blue-300">
              <tr>
                <th class="px-4 py-2">Name</th>
                <th class="px-4 py-2">DOB</th>
                <th class="px-4 py-2">Age</th>
                <th class="px-4 py-2">Gender</th>
                <th class="px-4 py-2">Contact Number</th>
                <th class="px-4 py-2">Email</th>
                <th class="px-4 py-2">Medical License Number</th>
                <th class="px-4 py-2">Years of Experience</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="h:hospital/h:doctors/h:doctor">
                <tr class="hover:bg-blue-100">
                  <td class="border px-4 py-2"><xsl:value-of select="h:doctorName"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:doctorDOB"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:doctorAge"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:doctorGender"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:doctorContactNumber"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:doctorEmail"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:doctorMedicalLicenseNumber"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:yearsOfExperience"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>

        <h2 class="text-2xl font-semibold mb-4">Addresses</h2>
        <div class="overflow-x-auto mb-8">
          <table class="min-w-full bg-white shadow-md rounded-lg overflow-hidden">
            <thead class="bg-blue-300">
              <tr>
                <th class="px-4 py-2">Address Line 1</th>
                <th class="px-4 py-2">City</th>
                <th class="px-4 py-2">State</th>
                <th class="px-4 py-2">Country</th>
                <th class="px-4 py-2">Postal Code</th>
                <th class="px-4 py-2">Contact Number</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="h:hospital/h:addresses/h:address">
                <tr class="hover:bg-blue-100">
                  <td class="border px-4 py-2"><xsl:value-of select="h:addressLine1"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:city"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:state"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:country"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:postalCode"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:contactNumber"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>

        <h2 class="text-2xl font-semibold mb-4">Appointments</h2>
        <div class="overflow-x-auto mb-8">
          <table class="min-w-full bg-white shadow-md rounded-lg overflow-hidden">
            <thead class="bg-blue-300">
              <tr>
                <th class="px-4 py-2">Reason</th>
                <th class="px-4 py-2">Booking Type</th>
                <th class="px-4 py-2">Booking Date</th>
                <th class="px-4 py-2">Appointment Date</th>
                <th class="px-4 py-2">Confirmation</th>
                <th class="px-4 py-2">Status</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="h:hospital/h:appointments/h:appointment">
                <tr class="hover:bg-blue-100">
                  <td class="border px-4 py-2"><xsl:value-of select="h:appointmentReason"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:bookingType"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:bookingDate"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:appointmentDate"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:appointmentConfirmation"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:appointmentStatus"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>

        <h2 class="text-2xl font-semibold mb-4">Rooms</h2>
        <div class="overflow-x-auto mb-8">
          <table class="min-w-full bg-white shadow-md rounded-lg overflow-hidden">
            <thead class="bg-blue-300">
              <tr>
                <th class="px-4 py-2">Name</th>
                <th class="px-4 py-2">Type</th>
                <th class="px-4 py-2">Location</th>
                <th class="px-4 py-2">Capacity</th>
                <th class="px-4 py-2">Availability</th>
                <th class="px-4 py-2">Reserved Date</th>
                <th class="px-4 py-2">Equipment</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="h:hospital/h:rooms/h:room">
                <tr class="hover:bg-blue-100">
                  <td class="border px-4 py-2"><xsl:value-of select="h:roomName"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:roomType"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:roomLocation"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:capacity"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:availability"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:reservedDate"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:roomEquipment"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>

        <h2 class="text-2xl font-semibold mb-4">Medical Records</h2>
        <div class="overflow-x-auto mb-8">
          <table class="min-w-full bg-white shadow-md rounded-lg overflow-hidden">
            <thead class="bg-blue-300">
              <tr>
                <th class="px-4 py-2">Start Date</th>
                <th class="px-4 py-2">Type</th>
                <th class="px-4 py-2">Medical History</th>
                <th class="px-4 py-2">Treatment History</th>
                <th class="px-4 py-2">Important Notes</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="h:hospital/h:medicalRecords/h:medicalRecord">
                <tr class="hover:bg-blue-100">
                  <td class="border px-4 py-2"><xsl:value-of select="h:recordStartDate"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:recordType"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:medicalHistory"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:treatmentHistory"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:importantNotes"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>

        <h2 class="text-2xl font-semibold mb-4">Prescriptions</h2>
        <div class="overflow-x-auto mb-8">
          <table class="min-w-full bg-white shadow-md rounded-lg overflow-hidden">
            <thead class="bg-blue-300">
              <tr>
                <th class="px-4 py-2">Date</th>
                <th class="px-4 py-2">Medicine Name</th>
                <th class="px-4 py-2">Medicine Type</th>
                <th class="px-4 py-2">Dosage Instructions</th>
                <th class="px-4 py-2">Duration</th>
                <th class="px-4 py-2">Important Notes</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="h:hospital/h:prescriptions/h:prescription">
                <tr class="hover:bg-blue-100">
                  <td class="border px-4 py-2"><xsl:value-of select="h:prescriptionDate"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:medicineName"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:medicineType"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:dosageInstructions"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:duration"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:importantNotes"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>

        <h2 class="text-2xl font-semibold mb-4">Lab Tests</h2>
        <div class="overflow-x-auto mb-8">
          <table class="min-w-full bg-white shadow-md rounded-lg overflow-hidden">
            <thead class="bg-blue-300">
              <tr>
                <th class="px-4 py-2">Type</th>
                <th class="px-4 py-2">Date</th>
                <th class="px-4 py-2">Results</th>
                <th class="px-4 py-2">Status</th>
                <th class="px-4 py-2">Important Notes</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="h:hospital/h:labTests/h:labTest">
                <tr class="hover:bg-blue-100">
                  <td class="border px-4 py-2"><xsl:value-of select="h:testType"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:testDate"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:testResults"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:testStatus"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:importantNotes"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>

        <h2 class="text-2xl font-semibold mb-4">Billing</h2>
        <div class="overflow-x-auto mb-8">
          <table class="min-w-full bg-white shadow-md rounded-lg overflow-hidden">
            <thead class="bg-blue-300">
              <tr>
                <th class="px-4 py-2">Date</th>
                <th class="px-4 py-2">Description</th>
                <th class="px-4 py-2">Amount</th>
                <th class="px-4 py-2">Payment Type</th>
                <th class="px-4 py-2">Due Date</th>
                <th class="px-4 py-2">Status</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="h:hospital/h:billing/h:bill">
                <tr class="hover:bg-blue-100">
                  <td class="border px-4 py-2"><xsl:value-of select="h:billDate"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:billDescription"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:billAmount"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:paymentType"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:paymentDueDate"/></td>
                  <td class="border px-4 py-2"><xsl:value-of select="h:paymentStatus"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>